{-# LANGUAGE OverloadedStrings #-} 
module Main where
import Database.PostgreSQL.Simple
import App.Modules.Message.Index
import DB.Connection
import DB.Models.Chip
import DB.Models.Contact
import DB.Models.Call
import DB.Models.Event
import DB.Models.Message
import DB.Models.Alarm;


main :: IO()
main = do 
 mainMessage          
 
--  insertChip "Joao Victor" "79988686084" False
--  insertChip "Rodrigo Correia" "83954478512" False
--  insertContact "Rodrigo Monstrinho" "83954478512" "2023-01-01" (-1) 1
--  insertMessage "Eae corno" "2023-04-26 16:09:12" 1 2
--  insertCall "2023-04-26 16:09:12" "2023-04-26 16:12:12" True 2 1
--  insertEvent "Aniversario do monstrinho" "2023-04-26" "" 1
--  insertAlarm "15:50" "Teste alarms"

startDatabase:: IO()
startDatabase = do     
 createChips 
 createCalls 
 createMessages      
 createEvents 
 createContacts  
 createAlarms  