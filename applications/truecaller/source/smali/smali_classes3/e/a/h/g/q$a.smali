.class public final Le/a/h/g/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/g/q;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/k0/a/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/g/q;


# direct methods
.method public constructor <init>(Le/a/h/g/q;)V
    .locals 0

    iput-object p1, p0, Le/a/h/g/q$a;->a:Le/a/h/g/q;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k0/a/p;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/k0/a/p;

    .line 2
    iget-object p2, p0, Le/a/h/g/q$a;->a:Le/a/h/g/q;

    iget-object v0, p2, Le/a/h/g/q;->f:Le/a/h/g/w;

    iget-object p2, p2, Le/a/h/g/q;->g:Le/a/h/g/p;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 4
    sget-object v0, Le/a/k0/a/p$d;->a:Le/a/k0/a/p$d;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p2, v0}, Le/a/h/g/p;->Gw(Z)V

    .line 5
    sget-object v0, Le/a/k0/a/p$a;->a:Le/a/k0/a/p$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p2, p1}, Le/a/h/g/p;->cj(Z)V

    .line 6
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
