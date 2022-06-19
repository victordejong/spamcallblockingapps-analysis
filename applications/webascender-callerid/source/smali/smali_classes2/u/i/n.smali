.class public final Lu/i/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/i/t$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu/i/t$a<",
        "Lu/g;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lu/j/e;

.field final b:Lu/i/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lu/j/e;->b()Lu/j/e;

    move-result-object v0

    iput-object v0, p0, Lu/i/n;->a:Lu/j/e;

    .line 3
    new-instance v0, Lu/i/o;

    invoke-direct {v0}, Lu/i/o;-><init>()V

    iput-object v0, p0, Lu/i/n;->b:Lu/i/o;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lu/g;

    invoke-virtual {p0, p1}, Lu/i/n;->c(Lu/g;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lu/i/t;)V
    .locals 0

    .line 1
    check-cast p1, Lu/g;

    invoke-virtual {p0, p1, p2}, Lu/i/n;->d(Lu/g;Lu/i/t;)V

    return-void
.end method

.method public c(Lu/g;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lu/i/n;->a:Lu/j/e;

    invoke-virtual {v0, p1}, Lu/j/e;->a(Lu/g;)Lu/j/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lu/i/n;->b:Lu/i/o;

    invoke-virtual {v0, p1}, Lu/i/o;->e(Lu/j/c;)I

    move-result p1

    return p1
.end method

.method public d(Lu/g;Lu/i/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/i/n;->a:Lu/j/e;

    invoke-virtual {v0, p1}, Lu/j/e;->a(Lu/g;)Lu/j/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lu/i/n;->b:Lu/i/o;

    invoke-virtual {v0, p1, p2}, Lu/i/o;->f(Lu/j/c;Lu/i/t;)V

    return-void
.end method
