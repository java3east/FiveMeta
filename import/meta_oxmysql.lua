--[[
    SHALL NOT BE USED DURING RUNTIME

    This file contains the meta data for oxmysql
    It is created by Java3east and is allowed to be used in any project, without any restrictions.
    It dosn't add any functionality to any resource, it is only used for type checking and intellisense.
    Not all natives are included, yet. It will be updated over time, as needed. Feel free to contribute.

    THIS REQUIRES THE LUA LANGUAGE SERVER TO WORK PROPERLY
]]

---@meta

---@class Queries : {[integer]: {query: string, values: Array<any>}}
---@class SharedQueries : {[integer]: string}
---@class SharedQueriesValues : {[string]: any}

---MySQL function table
MySQL = {}

---@type Dictionary<string, fun(...): any>
exports.oxmysql = {}

---@type Dictionary<string, fun(...): any>
exports.ghmattimysql = {}

MySQL.insert = {}
MySQL.prepare = {}
MySQL.query = {}
MySQL.rawExecute = {}
MySQL.scalar = {}
MySQL.single = {}
MySQL.transaction = {}
MySQL.update = {}
MySQL.Sync = {}
MySQL.Async = {}

---Inserts a new entry into the database and returns the insert id for the row, if valid.
---@param sql string SQL query
---@param data Array<any> Data to insert
---@return integer? insertId The id of the inserted row
function MySQL.insert.await(sql, data) end
MySQL.Sync.insert = MySQL.insert.await
exports.oxmysql.insert_async = MySQL.insert.await
exports.ghmattimysql.executeSync = MySQL.insert.await

---Inserts a new entry into the database and returns the insert id for the row, if valid in the callback function.
---@param sql string SQL query
---@param data Array<any> Data to insert
---@param cb fun(insertId: integer?) Callback function
function MySQL.Async.insert(sql, data, cb) end
exports.ghmattimysql.execute = MySQL.Async.insert
exports.oxmysql.insert = MySQL.Async.insert

---Prepare can be used to execute frequently called queries faster and accepts multiple sets of parameters to be used with a single query.
--- - Date will not return the datestring commonly used in FiveM
--- - TINYINT 1 and BIT will not return a boolean
--- - You can only use ? value placeholders, ?? column placeholders and named placeholders will throw an error
---Unlike rawExecute, the SELECT statement will return a column, row, or array of rows depending on the number of columns and rows selected.
---@param sql string SQL query
---@param data Array<any> Data to insert
---@return Array<Dictionary<string, any>> results The results of the query
function MySQL.prepare.await(sql, data) end
exports.oxmysql.prepare_async = MySQL.prepare.await

---Prepare can be used to execute frequently called queries faster and accepts multiple sets of parameters to be used with a single query.
--- - Date will not return the datestring commonly used in FiveM
--- - TINYINT 1 and BIT will not return a boolean
--- - You can only use ? value placeholders, ?? column placeholders and named placeholders will throw an error
---Unlike rawExecute, the SELECT statement will return a column, row, or array of rows depending on the number of columns and rows selected.
---@param sql string SQL query
---@param data Array<any> Data to insert
---@param cb fun(results: Array<Dictionary<string, any>>) Callback function
function exports.oxmysql.prepare(sql, data, cb) end

---When selecting data, returns all matching rows and columns; otherwise, returns data like insertId, affectedRows, etc.
---@param sql string SQL query
---@param data Array<any> Data to insert
---@return Array<Dictionary<string, any>>|integer results The results of the query
function MySQL.query.await(sql, data) end
MySQL.Sync.fetchAll = MySQL.query.await
exports.ghmattimysql.execute = MySQL.query.await
exports.oxmysql.query_async = MySQL.query.await

---When selecting data, returns all matching rows and columns; otherwise, returns data like insertId, affectedRows, etc.
---@param sql string SQL query
---@param data Array<any> Data to insert
---@param cb fun(results: Array<Dictionary<string, any>>|integer) Callback function
function MySQL.Async.fetchAll(sql, data, cb) end
exports.ghmattimysql.execute = MySQL.Async.fetchAll
exports.oxmysql.query = MySQL.Async.fetchAll

---rawExecute can be used to execute frequently called queries faster and accepts multiple sets of parameters to be used with a single query.
--- - Date will not return the datestring commonly used in FiveM
--- - TINYINT 1 and BIT will not return a boolean
--- - You can only use ? value placeholders, ?? column placeholders and named placeholders will throw an error
---Unlike prepare, the SELECT statement will always return an array of rows. When using SELECT, the return value will match query, single, or scalar depending on the number of columns and rows selected.
---@param sql string SQL query
---@param data Array<any> Data to insert
---@return Array<Dictionary<string, any>> results The results of the query
function MySQL.rawExecute.await(sql, data) end
exports.oxmysql.rawExecute_async = MySQL.rawExecute.await

---rawExecute can be used to execute frequently called queries faster and accepts multiple sets of parameters to be used with a single query.
--- - Date will not return the datestring commonly used in FiveM
--- - TINYINT 1 and BIT will not return a boolean
--- - You can only use ? value placeholders, ?? column placeholders and named placeholders will throw an error
---Unlike prepare, the SELECT statement will always return an array of rows. When using SELECT, the return value will match query, single, or scalar depending on the number of columns and rows selected.
---@param sql string SQL query
---@param data Array<any> Data to insert
---@param cb fun(results: Array<Dictionary<string, any>>) Callback function
function exports.oxmysql.rawExecute(sql, data, cb) end

---Returns the first column for a single row
---@param sql string SQL query
---@param data Array<any> Data to insert
---@return any result The results of the query
function MySQL.scalar.await(sql, data) end
MySQL.Sync.fetchScalar = MySQL.scalar.await
exports.ghmattimysql.scalar = MySQL.scalar.await
exports.oxmysql.scalar_async = MySQL.scalar.await

---Returns the first column for a single row
---@param sql string SQL query
---@param data Array<any> Data to insert
---@param cb fun(result: any) Callback function
function MySQL.Async.fetchScalar(sql, data, cb) end
exports.ghmattimysql.scalar = MySQL.Async.fetchScalar
exports.oxmysql.scalar = MySQL.Async.fetchScalar

---Returns all selected columns for a single row.
---@param sql string SQL query
---@param data Array<any> Data to insert
---@return Dictionary<string, any> result The results of the query
function MySQL.single.await(sql, data) end
exports.oxmysql.single_async = MySQL.single.await

---Returns all selected columns for a single row.
---@param sql string SQL query
---@param data Array<any> Data to insert
---@param cb fun(result: Dictionary<string, any>) Callback function
function exports.oxmysql.single(sql, data, cb) end

---A transaction executes multiple queries and commits them only if all succeed.
---If one fails, none of the queries are committed.
---The return value is a boolean, which is the result of the transaction.
---@param queries Queries|SharedQueries The queries to execute
---@param values SharedQueriesValues? The values to insert<br>**Only required if queries is a SharedQueries table**
---@return boolean success The result of the transaction
function MySQL.transaction.await(queries, values) end
MySQL.Sync.transaction = MySQL.transaction.await
exports.ghmattimysql.transaction = MySQL.transaction.await
exports.oxmysql.transaction_async = MySQL.transaction.await

---A transaction executes multiple queries and commits them only if all succeed.
---If one fails, none of the queries are committed.
---The return value is a boolean, which is the result of the transaction.
---@param queries Queries|SharedQueries The queries to execute
---@param values SharedQueriesValues? The values to insert<br>**Only required if queries is a SharedQueries table**
---@param cb fun(success: boolean) Callback function
function MySQL.Async.transaction(queries, values, cb) end
exports.ghmattimysql.transaction = MySQL.Async.transaction
exports.oxmysql.transaction = MySQL.Async.transaction

---Returns the number of rows affected by the query.
---@param sql string SQL query
---@param data Array<any> Data to insert
---@return integer affectedRows The number of rows affected
function MySQL.update.await(sql, data) end
MySQL.Sync.execute = MySQL.update.await
exports.ghmattimysql.executeSync = MySQL.update.await
exports.oxmysql.update_async = MySQL.update.await

---Returns the number of rows affected by the query.
---@param sql string SQL query
---@param data Array<any> Data to insert
---@param cb fun(affectedRows: integer) Callback function
function MySQL.Async.execute(sql, data, cb) end
exports.ghmattimysql.execute = MySQL.Async.execute
exports.oxmysql.update = MySQL.Async.execute