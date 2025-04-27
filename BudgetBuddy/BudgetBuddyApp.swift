//
//  BudgetBuddyApp.swift
//  BudgetBuddy
//
//  Created by Altynbek Kenzhe on 27.04.2025.
//
//@@@@@@&GPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPG&@@@@@@
//@@@@@&PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPJ~^:^!5PPPPPPPPPPPPPPPP&@@@@@
//@@@@#PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPJ      ^PPPPPPPPPPPPPPPPP#@@@@
//@@@&PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP7      .5PPPPPPPPPPPPPPPPP&@@@
//@@&PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP?      .5PPPPPPPPPPPPPPPPPP&@@
//@@GPPPPPPPPPPPPPPPPPPPPPP555PPPPPPPPPPPP555PPPPPPPP55Y55PPPPPPPPPPPPPPJ      :PPPPPPPPPPPPPPPPPPPG@@
//@#PPPPPPPPPPPPPPPPPPPPP7:...:?PPPPPPPPY^...^YPPJ!^:.....:^7YPPPPPPPPPPY      ~PPPPPPPPPPPPPPPPPPPP#@
//@GPPPPPPPPPPPPPPPPPPPPJ       YPPPPPPP~     ~?:             ~5PPPPPPPP5.     7PPPPPPPPPPPPPPPPPPPPG@
//#PPPPPPPPPPPPPPPPPPPPP5~     ~5PPPPPPP^        .^!777~.      :5PPPPPPPP:     JPPPPPPPPPPPPPPPPPPPPP#
//BPPPPPPPPPPPPPPPPPPPPPPPY?7?YPPPPPPPPP^       !5PPPPPPY:      ?PPPPPPPP^     YPPPPPPPPPPPPPPPPPPPPPB
//GPPPPPPPPPPPPPPPPPPPPPPPPGGGPPPPPPPPPP^      !PPPPPPPPP7      !PPPPPPPP!    .5PPPPPPPPPPPPPPPPPPPPPG
//PPPPPPPPPPPPPPPPPPPPPPPP5?!75PPPPPPPPP^      YPPPPPPPPPJ      !PPPPPPPP?    ^PPPPPPPPPPPPPPPPPPPPPPP
//PPPPPPPPPPPPPPPPPPPPPPPP~   ^PPPPPPPPP^      YPPPPPPPPPJ      !PPPPPPPP5:   JPPPPPPPPPPPPPPPPPPPPPPP
//PPPPPPPPPPPPPPPPPPPPPPP5.    YPPPPPPPP^     .YPPPPPPPPPJ      !PPPPPPPPP5??YPPPPPPPPPPPPPPPPPPPPPPPP
//GPPPPPPPPPPPPPPPPPPPPPPY     ?PPPPPPPP^      YPPPPPPPPPJ      !PPPPPPPPPPGGGPPPPPPPPPPPPPPPPPPPPPPPG
//BPPPPPPPPPPPPPPPPPPPPPP?     7PPPPPPPP^      YPPPPPPPPPJ      !PPPPPPPP5?!~!JPPPPPPPPPPPPPPPPPPPPPPB
//#PPPPPPPPPPPPPPPPPPPPPP!     ~PPPPPPPP^      YPPPPPPPPPJ      !PPPPPPPJ.     ~PPPPPPPPPPPPPPPPPPPPP#
//@GPPPPPPPPPPPPPPPPPPPPP^     ^PPPPPPPP!     .5PPPPPPPPPY      ?PPPPPPP?      .5PPPPPPPPPPPPPPPPPPPG@
//@#PPPPPPPPPPPPPPPPPPPP5.     :5PPPPPPP5!:.:~YPPPPPPPPPPPJ^:.:7PPPPPPPPP?^:::!YPPPPPPPPPPPPPPPPPPPP#@
//@@GPPPPPPPPPPPPPPPPPPPY      .5PPPPPPPPPP5PPPPPPPPPPPPPPPPP5PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPG@@
//@@&PPPPPPPPPPPPPPPPPPPJ       YPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP&@@
//@@@&PPPPPPPPPPPPPPPPPPJ       JPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP&@@@
//@@@@#PPPPPPPPPPPPPPPPP5:     :5PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP#@@@@
//@@@@@&PPPPPPPPPPPPPPPPP57~~~?5PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP&@@@@@
//@@@@@@&GPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPG&@@@@@@

// Please, accept me into the program

// #10 Reasons why you should accept me:

// #1 -> Я искренне фанатею от продуктов nFactorial

import SwiftUI
// #2 -> Учусь быстро и упорно

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.9, green: 0.95, blue: 1.0) // Light blue color
                .ignoresSafeArea()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            //  #3 -> Упорство и настойчивость — моё второе имя
            TabView {
                DashboardView()
                    .tabItem {
                        Label("Dashboard", systemImage: "house.fill")
                    }
                // #4 ->  Я точно знаю, куда иду
                TransactionListView()
                    .tabItem {
                        Label("Transactions", systemImage: "list.bullet")
                    }
                // #5 -> Люблю учиться и принимать обратную связь
                CategoryManagerView()
                    .tabItem {
                        Label("Categories", systemImage: "tag.fill")
                    }
                // #6 -> Люблю думать о продукте, а не только о коде
                AnalysisView()
                    .tabItem {
                        Label("Analysis", systemImage: "chart.pie.fill")
                    }
            } // #7 -> Приношу позитив в команду
        }
    }
} // #8 -> Хочу создавать проекты, которые приносят пользу людям

@main
struct BudgetBuddyApp: App {
    init() {
        // Initialize Supabase
        _ = SupabaseManager.shared
    }

    // #9 -> Стремлюсь к постоянному улучшению своих проектов
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .background(Color(red: 0.9, green: 0.95, blue: 1.0))
        }
    }
}

#Preview {
    ContentView()
}

// #10 Моё сердце уже принадлежит миссии nFactorial
//
//                    .^!7?JJJJ?7!^.                .^!7?JJJJ?7!^.
//                ^7YPGGGGGGGGGGGGPY7^.        .^7YPGGGGGGGGGGGGPY7^
//             .!YGGGGGGGGGGGGGGGGGGGG5?:    :75GGGGGGGGGGGGGGGGGGGGY!.
//            ~5GGGGGGGGGGGGGGGGGGGGGGGGPJ^^JPGGGGGGGGGGGGGGGGGGGGGGGG5~
//           7GGGGGGGGGGGGGGGGGGGGGGGGGGGGGPGGGGGGGGGGGGGGGGGGGGGGGGGGGG7
//          ?GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG7
//         ^GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG^
//         ?GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG?
//         YGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGY
//         JGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGJ
//         !GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG!
//         .5GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG5.
//          ^GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG^
//           !GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG!
//            ~PGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGP~
//             :YGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGY:
//               !PGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGP!
//                .?PGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGP?.
//                  :?PGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGP?:
//                    :?PGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGP7:
//                      .!5GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGY!.
//                         ^?PGGGGGGGGGGGGGGGGGGGGGGGGGGP?^
//                           .!YPGGGGGGGGGGGGGGGGGGGGPY!.
//                              :!YPGGGGGGGGGGGGGGPY!:
//                                 :!JPGGGGGGGGPJ!:
//                                    .~?5GG5?~.
//                                       .^^.
//                                                                                           
//                                                                                           

// Please, accept me into the program

// Example usage in a view model
func fetchData() async throws {
    let response = try await SupabaseManager.shared.client
        .from("your_table")
        .select()
        .execute()
    // Handle the response
}
