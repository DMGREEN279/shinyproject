#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.

library(shinydashboard)
library(shiny)

shinyUI(dashboardPage(skin = 'green',
    dashboardHeader(title = 'Honeybees and Neonic Pesticides', titleWidth = 350),
    dashboardSidebar(sidebarMenu(
        menuItem("Background Information", tabName = "Background_Information", icon = icon("map")),
        menuItem("An Overview on Production", tabName = "productiondata", icon = icon("database")),
        menuItem("Production and Pesticides", tabName = "pandp", icon = icon("database")),
        menuItem("Colony Yield and Pesticides", tabName = "cyandp", icon = icon("database")),
        menuItem("Yield over the Years", tabName = "yield", icon = icon("database")),
        menuItem("Product value and Pesticides", tabName = "value", icon = icon("database")),
        menuItem("Producing Colonies", tabName = "produc", icon = icon("database")),
        menuItem("Take Away", tabName = "take", icon = icon("database")),
        menuItem("Data", tabName = "datatable", icon = icon("database")),
        )
    ),
        
    dashboardBody(
        tabItems(
            tabItem(
                tabName = 'Background_Information',
                h1('Background_Information'),
                
                p("paragraph here"),
                p("paragraph here"),
                p("paragraph here"),
            ),
            tabItem(
                tabName="productiondata",
                fluidRow(column(11,plotOutput("prdata")
                )),
                fluidRow(p("paragraph here")),
                fluidRow(p("paragraph here"))),
            tabItem(
                tabName="pandp",
                fluidRow(box(plotOutput("temp plot"), width=1000, height=500)),
                fluidRow(column(8, plotOutput("temp plot")), column(4, (textOutput("temp plot")))
                )),
            tabItem(
                tabName="cyandp",
                fluidRow(p("temp text")),
                fluidRow(p("temp text")),
                fluidRow(p("temp text"))
            ),
            tabItem(
                tabName="yield",
                fluidRow(column(8,plotOutput("temp plot")), column(4, textOutput("temp text")))
            ),
            tabItem(
                tabName="value",
                fluidRow(column(8,plotOutput("temp plot")), column(4, textOutput("temp text")))
            ),
            tabItem(
                tabName="takeaway",
                h1('take'),
                
                p("paragraph here"),
                p("paragraph here"),
                p("paragraph here"),
                p("paragraph here"),
                p("paragraph here")
            ),
            
            tabItem(tabName = "datatable", # datatable
                    fluidRow(box(DT::dataTableOutput("honeystatesframe"),
                                 width=12)))
        ))))