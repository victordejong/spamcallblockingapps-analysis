.class public Lw3/b/a/i0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/i0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lw3/b/a/i0/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lw3/b/a/c;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lw3/b/a/i0/e$a;)I
    .locals 2

    .line 1
    iget-object p1, p1, Lw3/b/a/i0/e$a;->a:Lw3/b/a/c;

    .line 2
    iget-object v0, p0, Lw3/b/a/i0/e$a;->a:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->v()Lw3/b/a/j;

    move-result-object v0

    invoke-virtual {p1}, Lw3/b/a/c;->v()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/i0/e;->a(Lw3/b/a/j;Lw3/b/a/j;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lw3/b/a/i0/e$a;->a:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v0

    invoke-virtual {p1}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object p1

    invoke-static {v0, p1}, Lw3/b/a/i0/e;->a(Lw3/b/a/j;Lw3/b/a/j;)I

    move-result p1

    return p1
.end method

.method public c(JZ)J
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/e$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/i0/e$a;->a:Lw3/b/a/c;

    iget v1, p0, Lw3/b/a/i0/e$a;->b:I

    invoke-virtual {v0, p1, p2, v1}, Lw3/b/a/c;->E(JI)J

    move-result-wide p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lw3/b/a/i0/e$a;->a:Lw3/b/a/c;

    iget-object v2, p0, Lw3/b/a/i0/e$a;->d:Ljava/util/Locale;

    invoke-virtual {v1, p1, p2, v0, v2}, Lw3/b/a/c;->D(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    :goto_0
    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lw3/b/a/i0/e$a;->a:Lw3/b/a/c;

    invoke-virtual {p3, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lw3/b/a/i0/e$a;

    invoke-virtual {p0, p1}, Lw3/b/a/i0/e$a;->a(Lw3/b/a/i0/e$a;)I

    move-result p1

    return p1
.end method
