package dao;

import entity.Food;
import helper.ConnectionHelper;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FoodDAO {
    PreparedStatement preparedStatement;
    ResultSet resultSet;

    public void create(String rollNumber, String name, String category, String description, String thumbnail, String price, String soldAt, String updatedAt, String status) {
        String queryString = "insert into foods values(?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            preparedStatement = ConnectionHelper.getConnection().prepareStatement(queryString);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, category);
            preparedStatement.setString(3, description);
            preparedStatement.setString(4, thumbnail);
            preparedStatement.setString(5, price);
            preparedStatement.setString(6, soldAt);
            preparedStatement.setString(7, updatedAt);
            preparedStatement.setString(8, status);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public List<Food> getList() {
        List<Food> list = new ArrayList<>();
        String queryString = "select * from foods";
        try {
            preparedStatement = ConnectionHelper.getConnection().prepareStatement(queryString);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) { // chuyển con trỏ xuống dòng tiếp theo
                resultSet.getString("rollNumber");
                resultSet.getString("name");
                resultSet.getInt("categoryId");
                resultSet.getString("description");
                resultSet.getString("thumbnail");
                resultSet.getDouble("price");
                resultSet.getDate("soldAt");
                resultSet.getDate("soldAt");
                resultSet.getDate("updatedAt");
                return list;
            }
            System.out.println("Thao tác thành công!");
        } catch (SQLException throwables) {
//            throwables.printStackTrace();
            System.out.println("Lỗi khi thao tác với database. Message: " + throwables.getMessage());
        }
        return null;
    }

    public void delete(String id) {
        String queryString = "delete from foods where id = ?";
        try {
            preparedStatement = ConnectionHelper.getConnection().prepareStatement(queryString);
            preparedStatement.setString(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
