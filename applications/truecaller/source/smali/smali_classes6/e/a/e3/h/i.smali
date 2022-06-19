.class public final Le/a/e3/h/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/e3/k/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e3/h/i;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Landroid/content/Context;)Le/a/e3/k/e;
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Le/a/n/g0;->a(Landroid/content/Context;)Le/a/e3/c;

    move-result-object p0

    check-cast p0, Le/a/h/o0/f;

    .line 3
    invoke-virtual {p0}, Le/a/h/o0/f;->a()Le/a/j2;

    move-result-object p0

    invoke-interface {p0}, Le/a/j2;->g4()Le/a/e3/k/e;

    move-result-object p0

    const-string v0, "trueGraph.callAlertNotificationHelper()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e3/h/i;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Le/a/e3/h/i;->a(Landroid/content/Context;)Le/a/e3/k/e;

    move-result-object v0

    return-object v0
.end method
