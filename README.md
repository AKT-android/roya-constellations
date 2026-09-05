# 🌟 Roya Constellations

**Event engagement, supporter loyalty, and sponsor engagement platform for Roya STEM Racing team**

A premium, interactive Flutter application with a celestial design system. Discover Roya → attend events → earn Lumens → unlock rewards.

---

## 🚀 Quick Start

### Prerequisites
- Flutter SDK (≥3.0.0)
- Dart (≥3.0.0)
- iOS 12+ / Android 5.0+

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/AKT-android/roya-constellations.git
   cd roya-constellations
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

---

## 📁 Project Structure

```
lib/
├── main.dart                      # App entry point
├── config/
│   ├── theme.dart                # Design system & colors
│   ├── routes.dart               # Navigation configuration
│   └── constants.dart            # Global constants
├── screens/
│   ├── splash/
│   │   └── splash_screen.dart
│   ├── auth/
│   │   ├── login_screen.dart
│   │   ├── register_screen.dart
│   │   └── onboarding_screen.dart
│   └── navigation/
│       ├── the_core_screen.dart
│       ├── live_grid_screen.dart
│       ├── power_grid_screen.dart
│       ├── the_pit_screen.dart
│       ├── my_sky_screen.dart
│       └── root_navigation.dart
├── widgets/
│   ├── common/
│   │   ├── cosmic_app_bar.dart
│   │   ├── bottom_navigation.dart
│   │   ├── cosmic_button.dart
│   │   ├── cosmic_card.dart
│   │   └── loading_indicator.dart
│   └── stars/
│       ├── star_background.dart
│       ├── constellation_painter.dart
│       └── animated_stars.dart
├── models/
│   └── navigation_model.dart
└── utils/
    └── extensions.dart
```

---

## 🎨 Design System

### Colors
- **Deep Space**: `#020D1A`
- **Navy Primary**: `#041525`
- **Navy Secondary**: `#071E33`
- **Card Surface**: `#0B2945`
- **Elevated Surface**: `#103A5A`
- **Teal Primary**: `#00A9A5`
- **Teal Bright**: `#2DD4BF`
- **Blue Accent**: `#168DE2`
- **Lime/Yellow**: `#FFFF00` (from logo)
- **Text Primary**: `#FFFFFF`
- **Text Secondary**: `#A8C3D5`
- **Borders**: `#1B4865`

### Typography
- **Display**: Poppins Bold (28-32px)
- **Heading**: Poppins SemiBold (20-24px)
- **Body**: Inter Regular (14-16px)
- **Caption**: Inter Regular (12px)

### Components
- Cosmic cards with subtle border accents
- Constellation-style progress indicators
- Animated star backgrounds
- Smooth transitions and micro-interactions

---

## 📱 Screens (Phase 1)

### Authentication Flow
- ✅ Splash Screen
- ✅ Onboarding
- ✅ Login
- ✅ Register
- ✅ Profile Setup

### Main Navigation (5-Tab Bottom Nav)
1. **The Core** - Personalized dashboard
2. **Live Grid** - Events listing
3. **Power Grid** - Sponsors directory
4. **The Pit** - Rewards catalogue
5. **My Sky** - User profile & loyalty

### Additional Screens
- Event Details
- Sponsor Profile
- Reward Details
- Settings
- Notifications

---

## ⚙️ Technology Stack

### Frontend
- **Flutter** 3.0+
- **Dart** 3.0+
- **Provider** (state management - ready for Supabase integration)
- **Google Fonts** (Poppins, Inter)

### Ready for Backend
- Supabase Auth (structure prepared)
- Supabase PostgreSQL (models ready)
- Environment variables setup

---

## 🌟 Key Features (Phase 1)

✅ **Responsive Design**
- Optimized for 393×852px (mobile standard)
- Safe area handling (iOS/Android)
- Vertical scrolling where needed
- No content clipping or overflow

✅ **Celestial UI**
- Animated star backgrounds
- Constellation progress indicators
- Cosmic card designs
- Professional microinteractions

✅ **Navigation**
- Persistent bottom navigation
- Route state preservation
- Back navigation support
- Smooth screen transitions

✅ **Interactive Components**
- All buttons have real actions
- Disabled states with explanations
- Loading indicators
- Empty states

✅ **Accessibility**
- Clear contrast ratios
- Screen reader labels
- Large tap targets (48x48dp min)
- Keyboard navigation ready

---

## 🔒 Security (Prepared for Phase 2+)

- `.env` variables for secrets
- No hardcoded credentials
- Supabase Row Level Security ready
- Role-based access prepared

---

## 🧪 Testing

Run tests:
```bash
flutter test
```

---

## 📖 Development Workflow

1. **Create a branch**: `git checkout -b feature/your-feature`
2. **Make changes**: Edit screens and widgets
3. **Test locally**: `flutter run`
4. **Commit**: `git commit -m "Add feature description"`
5. **Push**: `git push origin feature/your-feature`
6. **Create PR** for review

---

## 📝 Environment Setup

Create `.env` file (not committed):
```env
SUPABASE_URL=your_url_here
SUPABASE_ANON_KEY=your_key_here
```

See `.env.example` for template.

---

## 🚀 Deployment Checklist

- [ ] All screens render correctly
- [ ] Navigation works without errors
- [ ] No content is clipped
- [ ] Loading states display
- [ ] Error states display
- [ ] All buttons are functional
- [ ] Colors match spec
- [ ] Responsive on multiple device sizes
- [ ] Performance is smooth (60 FPS)

---

## 📞 Support

For issues or questions, open an issue in the GitHub repository.

---

## 📄 License

MIT License - See LICENSE file for details.

---

**Built with ❤️ for Roya STEM Racing** 🏎️⚡
