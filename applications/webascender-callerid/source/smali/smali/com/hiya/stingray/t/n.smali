.class public abstract Lcom/hiya/stingray/t/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/n$a;,
        Lcom/hiya/stingray/t/n$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hiya/stingray/t/n$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/a$a;

    invoke-direct {v0}, Lcom/hiya/stingray/t/a$a;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hiya/stingray/t/n;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/n;->a()Lcom/hiya/stingray/t/n$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/hiya/stingray/t/n$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    .line 3
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/n$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    .line 4
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/n$a;->f(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    .line 5
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/t/n$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    .line 6
    invoke-virtual {v0, p4}, Lcom/hiya/stingray/t/n$a;->d(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    .line 7
    invoke-virtual {v0, p5}, Lcom/hiya/stingray/t/n$a;->e(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    .line 8
    invoke-virtual {v0, p6}, Lcom/hiya/stingray/t/n$a;->b(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    .line 9
    invoke-virtual {v0}, Lcom/hiya/stingray/t/n$a;->a()Lcom/hiya/stingray/t/n;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Ljava/lang/String;
.end method
