import 'package:flutter/material.dart';

void main() {
  runApp(const MeuPortfolio());
}

class MeuPortfolio extends StatelessWidget {
  const MeuPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfólio - Antonio Marcos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ANTONIO MARCOS',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
        actions: [
          TextButton(onPressed: () {}, child: const Text('Projetos')),
          TextButton(onPressed: () {}, child: const Text('Sobre')),
          TextButton(onPressed: () {}, child: const Text('Contato')),
          const SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 🚀 CARD DE DESTAQUE
                  _buildFeaturedCard(context),
                  const SizedBox(height: 40),

                  // 🖼️ ÁREA VISUAL PRINCIPAL (MOCKUP / CAPA)
                  _buildVisualArea(),
                  const SizedBox(height: 40),

                  // 💡 O PROBLEMA E A SOLUÇÃO
                  _buildProblemSolution(),
                  const Divider(height: 60),

                  // 🛠️ ARQUITETURA E TECNOLOGIAS UTILIZADAS
                  _buildTechStack(),
                  const Divider(height: 60),

                  // ⚡ CARACTERÍSTICAS PRINCIPAIS (FEATURES)
                  _buildFeatures(),
                  const Divider(height: 60),

                  // 📈 RESULTADOS E LIÇÕES APRENDIDAS
                  _buildResults(),
                  const Divider(height: 60),

                  // 🤝 VAMOS TRABALHAR JUNTOS? (CALL TO ACTION)
                  _buildCallToAction(),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturedCard(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8,
              children: [
                Chip(label: const Text('Front-end'), backgroundColor: Colors.blue.shade100),
                Chip(label: const Text('Flutter Web'), backgroundColor: Colors.blue.shade100),
                Chip(label: const Text('Out 2026'), backgroundColor: Colors.grey.shade200),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              '🎯 "Desenvolvimento de um Dashboard E-commerce em Tempo Real"',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Uma aplicação web escalável com atualizações ao vivo, gráficos interativos e foco total na experiência do usuário (UX).',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.code),
                  label: const Text('Ver Código no GitHub'),
                ),
                FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.open_in_new),
                  label: const Text('Acessar Deploy em Produção ✨'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVisualArea() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
        ),
        // Imagem genérica para simular o layout da aplicação
        child: Image.network(
          'https://picsum.photos/1000/400',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProblemSolution() {
    return Wrap(
      spacing: 32,
      runSpacing: 32,
      children: [
        SizedBox(
          width: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Row(
                children: [
                  Icon(Icons.warning_amber_rounded, color: Colors.orange, size: 28),
                  SizedBox(width: 8),
                  Text('O Desafio:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 8),
              Text(
                'Lojistas precisavam monitorar vendas sem atualizar a página manualmente. Havia um gap na comunicação em tempo real.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Row(
                children: [
                  Icon(Icons.lightbulb_outline, color: Colors.green, size: 28),
                  SizedBox(width: 8),
                  Text('A Solução:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 8),
              Text(
                'Criação de um pipeline de dados com WebSockets e renderização otimizada via Flutter Web para atualizações fluidas.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTechStack() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('🛠️ ARQUITETURA E TECNOLOGIAS UTILIZADAS', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        ListTile(
          leading: const Icon(Icons.flutter_dash, color: Colors.blue),
          title: const Text('Flutter Web'),
          subtitle: const Text('Escolhido pela capacidade de compilar para web mantendo alta fidelidade visual.'),
        ),
        ListTile(
          leading: const Icon(Icons.data_object, color: Colors.green),
          title: const Text('Node.js & WebSockets'),
          subtitle: const Text('Backend ágil para suportar comunicação bidirecional em tempo real.'),
        ),
        ListTile(
          leading: const Icon(Icons.design_services, color: Colors.purple),
          title: const Text('Material 3'),
          subtitle: const Text('Sistema de design escolhido para garantir componentes acessíveis e responsivos.'),
        ),
      ],
    );
  }

  Widget _buildFeatures() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('⚡ CARACTERÍSTICAS PRINCIPAIS', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            _featureCard('🎨 UI/UX Responsivo', 'Se adapta a qualquer tamanho de tela sem quebrar o layout.'),
            _featureCard('📊 Gráficos Dinâmicos', 'Atualização constante na tela usando bibliotecas otimizadas.'),
            _featureCard('🔒 Autenticação JWT', 'Proteção robusta de rotas e perfis de acesso para lojistas.'),
          ],
        ),
      ],
    );
  }

  Widget _featureCard(String title, String description) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 8),
          Text(description),
        ],
      ),
    );
  }

  Widget _buildResults() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('📈 RESULTADOS E LIÇÕES APRENDIDAS', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        SizedBox(height: 16),
        Text('• Desempenho: Redução de 40% no tempo de carregamento inicial (LCP).', style: TextStyle(fontSize: 16)),
        SizedBox(height: 8),
        Text('• Aprendizado: Implementação profunda de gerenciamento de estado global com Providers/Bloc.', style: TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget _buildCallToAction() {
    return Center(
      child: Column(
        children: [
          const Text(
            '🤝 VAMOS TRABALHAR JUNTOS?',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Gostou do projeto? Estou disponível para novos desafios e contratos.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.email),
                label: const Text('Enviar Mensagem por E-mail'),
              ),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.business_center),
                label: const Text('Conectar no LinkedIn'),
                style: FilledButton.styleFrom(backgroundColor: const Color(0xFF0077B5)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}