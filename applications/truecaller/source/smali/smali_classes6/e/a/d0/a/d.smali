.class public final Le/a/d0/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/e4/p;


# direct methods
.method public constructor <init>(Le/a/e4/p;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "multiSimManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/a/d;->a:Le/a/e4/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Z)Ljava/lang/Integer;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/d0/a/d;->a:Le/a/e4/p;

    invoke-interface {p1}, Le/a/e4/p;->h()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/d0/a/d;->a:Le/a/e4/p;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    :goto_0
    invoke-interface {p1, p2}, Le/a/e4/p;->n(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
