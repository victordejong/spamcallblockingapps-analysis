.class public Lcom/hiya/stingray/s/e/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/hiya/stingray/manager/x3;)Lcom/hiya/stingray/q/a/m;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/a/n;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/q/a/n;-><init>(Lcom/hiya/stingray/manager/x3;)V

    return-object v0
.end method

.method b(Lcom/hiya/stingray/q/a/m;)Lcom/hiya/stingray/q/b/x;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/x;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/q/b/x;-><init>(Lcom/hiya/stingray/q/a/m;)V

    return-object v0
.end method

.method c(Lcom/hiya/stingray/manager/m3;Lh/a;Lcom/hiya/stingray/q/b/x;Lcom/hiya/stingray/manager/j3;Landroid/content/Context;)Lcom/hiya/stingray/manager/h2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/manager/m3;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hiya/stingray/q/b/x;",
            "Lcom/hiya/stingray/manager/j3;",
            "Landroid/content/Context;",
            ")",
            "Lcom/hiya/stingray/manager/h2;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/hiya/stingray/manager/h2;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/manager/h2;-><init>(Lcom/hiya/stingray/manager/m3;Lh/a;Lcom/hiya/stingray/q/b/x;Lcom/hiya/stingray/manager/j3;Landroid/content/Context;)V

    return-object v6
.end method
