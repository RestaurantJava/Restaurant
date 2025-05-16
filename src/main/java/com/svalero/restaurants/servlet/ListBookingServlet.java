

@WebServlet("/list_bookings")

public class
ListBookingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Database database = new Database();
            database.connect();

            BookingDao bookingDao = new BookingDao(database.getConnection());
            List<Booking> bookings = bookingDao.getAllBookings();

            request.setAttribute("bookings", bookings);
            request.getRequestDispatcher("list_bookings.jsp").forward(request, response);

            database.disconnect();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
