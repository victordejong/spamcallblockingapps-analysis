.class public final Lcom/hiya/client/callerid/prefs/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/google/gson/f;

.field private final c:Lcom/hiya/client/callerid/prefs/Cache;

.field private final d:Lcom/hiya/client/callerid/prefs/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/gson/f;Lcom/hiya/client/callerid/prefs/Cache;Lcom/hiya/client/callerid/prefs/c;)V
    .locals 1

    const-string v0, "sharedPref"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currInitSpec"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/prefs/e;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/hiya/client/callerid/prefs/e;->b:Lcom/google/gson/f;

    iput-object p3, p0, Lcom/hiya/client/callerid/prefs/e;->c:Lcom/hiya/client/callerid/prefs/Cache;

    iput-object p4, p0, Lcom/hiya/client/callerid/prefs/e;->d:Lcom/hiya/client/callerid/prefs/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/hiya/client/callerid/prefs/Cache;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/e;->c:Lcom/hiya/client/callerid/prefs/Cache;

    return-object v0
.end method

.method public final b()Lcom/hiya/client/callerid/prefs/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/e;->d:Lcom/hiya/client/callerid/prefs/c;

    return-object v0
.end method

.method public final c()Lg/g/a/a/i/o/k;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/e;->b:Lcom/google/gson/f;

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/prefs/e;->a:Landroid/content/SharedPreferences;

    const-string v2, "hashed_countries"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-class v2, Lg/g/a/a/i/o/k;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/i/o/k;

    return-object v0
.end method

.method public final d(Lg/g/a/a/i/o/k;)V
    .locals 2

    const-string v0, "hashCountriesDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/client/callerid/prefs/e;->b:Lcom/google/gson/f;

    invoke-virtual {v1, p1}, Lcom/google/gson/f;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "hashed_countries"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
