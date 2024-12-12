<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SpaceXcoin - A Moeda do Futuro</title>
    <link rel="stylesheet" href="styles.css"> <!-- Arquivo de CSS externo -->
</head>
<body>
    <!-- Cabeçalho -->
    <header>
        <div class="container">
            <h1>SpaceXcoin</h1>
            <nav>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">Sobre Nós</a></li>
                    <li><a href="#how-it-works">Como Funciona</a></li>
                    <li><a href="#projects">Projetos</a></li>
                    <li><a href="#market">Mercado</a></li>
                    <li><a href="#community">Comunidade</a></li>
                    <li><a href="#contact">Contato</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Página Inicial -->
    <section id="home">
        <div class="hero">
            <h2>A Moeda do Futuro para a Exploração Espacial</h2>
            <p>Investindo hoje no futuro do cosmos.</p>
            <a href="#about" class="btn">Saiba Mais</a>
            <a href="#market" class="btn">Adquira SpaceXcoin</a>
        </div>
    </section>

    <!-- Sobre Nós -->
    <section id="about" class="section">
        <div class="container">
            <h2>Sobre Nós</h2>
            <p>SpaceXcoin é uma criptomoeda descentralizada que conecta investidores, empresas e entusiastas na busca por um futuro interplanetário sustentável. Nosso objetivo é financiar o desenvolvimento de tecnologias aeroespaciais para transformar a exploração espacial em uma realidade viável.</p>
        </div>
    </section>

    <!-- Como Funciona -->
    <section id="how-it-works" class="section">
        <div class="container">
            <h2>Como Funciona</h2>
            <ul>
                <li><strong>Blockchain e Transparência:</strong> Baseada na tecnologia blockchain, garantindo transações seguras e auditáveis.</li>
                <li><strong>Modelo DAO:</strong> Governança descentralizada que coloca os detentores no controle das decisões estratégicas.</li>
                <li><strong>Distribuição de Fundos:</strong> Recursos alocados para pesquisa, startups e sustentabilidade no setor espacial.</li>
            </ul>
        </div>
    </section>

    <!-- Projetos -->
    <section id="projects" class="section">
        <div class="container">
            <h2>Projetos e Parcerias</h2>
            <p>Descubra os projetos inovadores financiados pela SpaceXcoin, desde desenvolvimento de módulos habitáveis para Marte até sistemas de propulsão sustentável.</p>
            <ul>
                <li>Parcerias com startups e universidades</li>
                <li>Pesquisa em energia renovável para missões espaciais</li>
                <li>Exploração de asteroides e recursos naturais</li>
            </ul>
        </div>
    </section>

    <!-- Mercado -->
    <section id="market" class="section">
        <div class="container">
            <h2>Mercado</h2>
            <p>Adquira SpaceXcoin nas principais exchanges e acompanhe a evolução do mercado em tempo real.</p>
            <a href="#buy" class="btn">Compre Agora</a>
        </div>
    </section>

    <!-- Comunidade -->
    <section id="community" class="section">
        <div class="container">
            <h2>Comunidade</h2>
            <p>Participe da nossa governança descentralizada e contribua para a construção do futuro da exploração espacial.</p>
            <a href="#forum" class="btn">Junte-se ao Fórum</a>
        </div>
    </section>

    <!-- Contato -->
    <section id="contact" class="section">
        <div class="container">
            <h2>Contato</h2>
            <form action="#" method="POST">
                <label for="name">Nome:</label>
                <input type="text" id="name" name="name" required>
                
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                
                <label for="message">Mensagem:</label>
                <textarea id="message" name="message" rows="5" required></textarea>
                
                <button type="submit">Enviar</button>
            </form>
        </div>
    </section>

    <!-- Rodapé -->
    <footer>
        <div class="container">
            <p>&copy; 2024 SpaceXcoin. Todos os direitos reservados.</p>
            <nav>
                <ul>
                    <li><a href="#privacy">Política de Privacidade</a></li>
                    <li><a href="#terms">Termos de Uso</a></li>
                </ul>
            </nav>
        </div>
    </footer>
</body>
</html>
body {
    font-family: 'Roboto', sans-serif;
    margin: 0;
    padding: 0;
    line-height: 1.6;
    background: #0d1117;
    color: #c9d1d9;
}

header {
    background: #161b22;
    color: #fff;
    padding: 1rem 0;
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
}

header .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: auto;
    padding: 0 2rem;
}

header nav ul {
    list-style: none;
    display: flex;
}

header nav ul li {
    margin: 0 1rem;
}

header nav ul li a {
    color: #fff;
    text-decoration: none;
    font-weight: bold;
}

.hero {
    text-align: center;
    margin-top: 6rem;
    padding: 4rem 2rem;
    background: url('space-background.jpg') no-repeat center center/cover;
    color: #fff;
}

.btn {
    display: inline-block;
    margin: 1rem 0.5rem;
    padding: 0.8rem 1.5rem;
    background: #ff6f61;
    color: #fff;
    border: none;
    border-radius: 5px;
    text-decoration: none;
}

.btn:hover {
    background: #ff3f3f;
    transition: 0.3s;
}

.section {
    padding: 4rem 2rem;
    text-align: center;
}

footer {
    background: #161b22;
    padding: 1rem 0;
    text-align: center;
    color: #fff;
}
    <!-- Gráfico de Preço -->
    <section id="price-chart" class="section">
        <div class="container">
            <h2>Preço da SpaceXcoin em Tempo Real</h2>
            <canvas id="priceChart" width="800" height="400"></canvas>
        </div>
    </section>

// Usando Chart.js para criar um gráfico
document.addEventListener('DOMContentLoaded', () => {
    const ctx = document.getElementById('priceChart').getContext('2d');
    const priceChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: [], // As labels serão preenchidas dinamicamente
            datasets: [{
                label: 'Preço da SpaceXcoin (USD)',
                data: [],
                borderColor: '#ff6f61',
                backgroundColor: 'rgba(255, 111, 97, 0.2)',
                fill: true,
            }]
        },
        options: {
            responsive: true,
            scales: {
                x: {
                    type: 'time',
                    time: {
                        unit: 'minute'
                    }
                },
                y: {
                    beginAtZero: false
                }
            }
        }
    });

    // Simulando dados ou integrando com uma API
    function updateChart() {
        fetch('https://api.exchangerate-api.com/v4/latest/USD') // Substitua por uma API de preços de criptomoeda
            .then(response => response.json())
            .then(data => {
                const newPrice = Math.random() * 100; // Dados simulados
                const now = new Date();

                // Atualizando o gráfico
                priceChart.data.labels.push(now);
                priceChart.data.datasets[0].data.push(newPrice);
                priceChart.update();
            });
    }

    setInterval(updateChart, 60000); // Atualizar a cada minuto
});
/* FAQ */
.faq-item {
    margin: 1.5rem 0;
    text-align: left;
}

.faq-item h3 {
    font-size: 1.5rem;
    color: #ff6f61;
}

.faq-item p {
    margin-top: 0.5rem;
    font-size: 1rem;
}

/* Blog */
.blog-post {
    margin: 2rem 0;
    padding: 1.5rem;
    background: #161b22;
    border-radius: 10px;
    text-align: left;
}

.blog-post h3 {
    color: #ff6f61;
}

.blog-post p {
    margin-top: 0.5rem;
    font-size: 1rem;
}
// Detectando scroll para exibir seções
document.addEventListener('scroll', () => {
    const sections = document.querySelectorAll('.section');
    sections.forEach(section => {
        const sectionPosition = section.getBoundingClientRect().top;
        const screenPosition = window.innerHeight / 1.3;
        if (sectionPosition < screenPosition) {
            section.classList.add('visible');
        }
    });
});
