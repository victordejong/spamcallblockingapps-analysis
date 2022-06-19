.class public abstract Le/a/c/c0/x;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field public final m:Landroid/content/SharedPreferences;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "sharedPrefs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Le/a/c/c0/x;->m:Landroid/content/SharedPreferences;

    iput-object p2, p0, Le/a/c/c0/x;->n:Ljava/lang/String;

    iput-object p3, p0, Le/a/c/c0/x;->o:Ljava/lang/Object;

    .line 2
    new-instance p1, Le/a/c/c0/x$a;

    invoke-direct {p1, p0}, Le/a/c/c0/x$a;-><init>(Le/a/c/c0/x;)V

    iput-object p1, p0, Le/a/c/c0/x;->l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method


# virtual methods
.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/x;->n:Ljava/lang/String;

    iget-object v1, p0, Le/a/c/c0/x;->o:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Le/a/c/c0/x;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->j(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/a/c/c0/x;->m:Landroid/content/SharedPreferences;

    iget-object v1, p0, Le/a/c/c0/x;->l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c0/x;->m:Landroid/content/SharedPreferences;

    iget-object v1, p0, Le/a/c/c0/x;->l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public abstract m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation
.end method
