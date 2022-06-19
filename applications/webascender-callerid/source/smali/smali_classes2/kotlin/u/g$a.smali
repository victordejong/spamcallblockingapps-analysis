.class public final Lkotlin/u/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/u/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlin/u/g;Lkotlin/u/g;)Lkotlin/u/g;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/u/h;->f:Lkotlin/u/h;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lkotlin/u/g$a$a;->f:Lkotlin/u/g$a$a;

    invoke-interface {p1, p0, v0}, Lkotlin/u/g;->fold(Ljava/lang/Object;Lkotlin/w/b/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/u/g;

    :goto_0
    return-object p0
.end method
