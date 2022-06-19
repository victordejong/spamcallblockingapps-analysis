.class public abstract Lcom/hiya/stingray/t/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/j0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/hiya/stingray/t/y0;ZLjava/lang/String;)Lcom/hiya/stingray/t/j0;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/hiya/stingray/t/j0;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/hiya/stingray/t/y0;ZLjava/lang/String;)Lcom/hiya/stingray/t/j0;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/hiya/stingray/t/y0;ZLjava/lang/String;)Lcom/hiya/stingray/t/j0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/y0;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/hiya/stingray/t/j0;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/hiya/stingray/t/t;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/t/t;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/hiya/stingray/t/y0;ZLjava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Lcom/hiya/stingray/t/y0;
.end method

.method public abstract i()Z
.end method
