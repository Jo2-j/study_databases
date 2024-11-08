-- Active: 1729664032866@@192.168.0.63@27017@study_finance_shl
// - refer :  stocks_regularexpress
// - 대상 데이터 insert 후 문제들를 find 작성(stocks_data 있음)
// - 필수 사항 : github에 branch 분리(develop_first)
db("study_finance_shl").collection("study_stocks").find({}).toArray();

// symbol 필드가 "A"로 시작하는 문서를 검색합니다.
db("study_finance_shl").collection("study_stocks").find({"symbol": /^A/}).toArray();

// date 필드가 "2023-10-05"로 끝나는 문서를 모두 검색합니다.
db("study_finance_shl").collection("study_stocks").find({"date": /2023-10-05/}).toArray();

// price 필드의 값이 "5"로 끝나는 문서를 검색합니다.
db("study_finance_shl").collection("study_stocks").find({"price": /5$/}).toArray();

//date 필드가 "2023-10-01"에서 "2023-10-03" 사이에 해당하는 문서를 모두 검색합니다.
db("study_finance_shl").collection("study_stocks").find({"date": /"2023-10-01-2023-10-03/}).toArray();

// 특정 문자열을 포함하는 주식 심볼 찾기
db("study_finance_shl").collection("study_stocks").find({"symbol": /L/}).toArray();

// date 필드가 "03"일 해당하는 문서를 모두 검색합니다.
db("study_finance_shl").collection("study_stocks").find({"date": /03/}).toArray();

// date 필드가 "02"일 이고, price가 1000 이상인 모든 문서를 검색합니다.
db("study_finance_shl").collection("study_stocks").find({$and : [{"date": /02$/} , {"price" : {$gte : 1000}}]}).toArray();

// symbol 필드가 "O"로 끝나는 문서를 검색합니다.
db("study_finance_shl").collection("study_stocks").find({"symbol" : /o$/i}).toArray();

db("study_finance_shl").collection("study_stocks").insertMany([
  { "symbol": "AAPL", "date": "2023-10-01", "price": 150.5, "volume": 10000 },
  { "symbol": "AAPL", "date": "2023-10-02", "price": 152.3, "volume": 12000 },
  { "symbol": "AAPL", "date": "2023-10-03", "price": 153.0, "volume": 11500 },
  { "symbol": "AAPL", "date": "2023-10-04", "price": 155.7, "volume": 13000 },
  { "symbol": "AAPL", "date": "2023-10-05", "price": 154.0, "volume": 12500 },
  { "symbol": "GOOGL", "date": "2023-10-01", "price": 2800, "volume": 5000 },
  { "symbol": "GOOGL", "date": "2023-10-02", "price": 2825.5, "volume": 5500 },
  { "symbol": "GOOGL", "date": "2023-10-03", "price": 2840, "volume": 6000 },
  { "symbol": "GOOGL", "date": "2023-10-04", "price": 2830, "volume": 4500 },
  { "symbol": "GOOGL", "date": "2023-10-05", "price": 2855, "volume": 7000 },
  { "symbol": "TSLA", "date": "2023-10-01", "price": 750, "volume": 8000 },
  { "symbol": "TSLA", "date": "2023-10-02", "price": 760, "volume": 8500 },
  { "symbol": "TSLA", "date": "2023-10-03", "price": 755, "volume": 9000 },
  { "symbol": "TSLA", "date": "2023-10-04", "price": 770, "volume": 9500 },
  { "symbol": "TSLA", "date": "2023-10-05", "price": 765, "volume": 9300 },
  { "symbol": "AMZN", "date": "2023-10-01", "price": 3300, "volume": 3000 },
  { "symbol": "AMZN", "date": "2023-10-02", "price": 3325, "volume": 3200 },
  { "symbol": "AMZN", "date": "2023-10-03", "price": 3340, "volume": 3100 },
  { "symbol": "AMZN", "date": "2023-10-04", "price": 3355, "volume": 3300 },
  { "symbol": "AMZN", "date": "2023-10-05", "price": 3360, "volume": 3500 },
  { "symbol": "MSFT", "date": "2023-10-01", "price": 290, "volume": 7000 },
  { "symbol": "MSFT", "date": "2023-10-02", "price": 295, "volume": 7500 },
  { "symbol": "MSFT", "date": "2023-10-03", "price": 292, "volume": 7700 },
  { "symbol": "MSFT", "date": "2023-10-04", "price": 298, "volume": 7200 },
  { "symbol": "MSFT", "date": "2023-10-05", "price": 299, "volume": 7800 },
  { "symbol": "NFLX", "date": "2023-10-01", "price": 650, "volume": 4500 },
  { "symbol": "NFLX", "date": "2023-10-02", "price": 660, "volume": 4700 },
  { "symbol": "NFLX", "date": "2023-10-03", "price": 655, "volume": 4400 },
  { "symbol": "NFLX", "date": "2023-10-04", "price": 670, "volume": 4800 },
  { "symbol": "NFLX", "date": "2023-10-05", "price": 665, "volume": 4900 },
  { "symbol": "META", "date": "2023-10-01", "price": 315, "volume": 6400 },
  { "symbol": "META", "date": "2023-10-02", "price": 320, "volume": 6600 },
  { "symbol": "META", "date": "2023-10-03", "price": 318, "volume": 6700 },
  { "symbol": "META", "date": "2023-10-04", "price": 325, "volume": 6800 },
  { "symbol": "META", "date": "2023-10-05", "price": 322, "volume": 6900 },
  { "symbol": "NVDA", "date": "2023-10-01", "price": 450, "volume": 5100 },
  { "symbol": "NVDA", "date": "2023-10-02", "price": 460, "volume": 5300 },
  { "symbol": "NVDA", "date": "2023-10-03", "price": 455, "volume": 5200 },
  { "symbol": "NVDA", "date": "2023-10-04", "price": 470, "volume": 5400 },
  { "symbol": "NVDA", "date": "2023-10-05", "price": 465, "volume": 5500 }
]);
