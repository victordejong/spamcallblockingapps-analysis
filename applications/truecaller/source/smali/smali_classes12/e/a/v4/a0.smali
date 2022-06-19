.class public final Le/a/v4/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v4/a0;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Locale;
    .locals 2

    .line 1
    sget-object v0, Le/a/b0/k/h;->b:Ljava/util/Locale;

    const-string v1, "LocaleManager.getAppLocale()"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/util/Locale;)V
    .locals 1

    const-string v0, "locale"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v4/a0;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Le/a/b0/k/h;->b(Landroid/content/Context;Ljava/util/Locale;)Z

    return-void
.end method
