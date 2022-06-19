.class final Lf/j/b/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/j/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/j/b/b$b<",
        "Lf/e/h<",
        "Lf/h/l/c0/c;",
        ">;",
        "Lf/h/l/c0/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lf/e/h;

    invoke-virtual {p0, p1, p2}, Lf/j/b/a$b;->c(Lf/e/h;I)Lf/h/l/c0/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lf/e/h;

    invoke-virtual {p0, p1}, Lf/j/b/a$b;->d(Lf/e/h;)I

    move-result p1

    return p1
.end method

.method public c(Lf/e/h;I)Lf/h/l/c0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/e/h<",
            "Lf/h/l/c0/c;",
            ">;I)",
            "Lf/h/l/c0/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lf/e/h;->m(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/h/l/c0/c;

    return-object p1
.end method

.method public d(Lf/e/h;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/e/h<",
            "Lf/h/l/c0/c;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lf/e/h;->l()I

    move-result p1

    return p1
.end method
