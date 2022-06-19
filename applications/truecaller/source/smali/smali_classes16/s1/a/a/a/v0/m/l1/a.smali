.class public final Ls1/a/a/a/v0/m/l1/a;
.super Ls1/a/a/a/v0/m/h$a$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/m/l1/c;

.field public final synthetic b:Ls1/a/a/a/v0/m/d1;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l1/c;Ls1/a/a/a/v0/m/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/m/l1/a;->a:Ls1/a/a/a/v0/m/l1/c;

    iput-object p2, p0, Ls1/a/a/a/v0/m/l1/a;->b:Ls1/a/a/a/v0/m/d1;

    invoke-direct {p0}, Ls1/a/a/a/v0/m/h$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/m/l1/a;->a:Ls1/a/a/a/v0/m/l1/c;

    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/a;->b:Ls1/a/a/a/v0/m/d1;

    .line 2
    invoke-interface {p1, p2}, Ls1/a/a/a/v0/m/n1/n;->k(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.KotlinType"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ls1/a/a/a/v0/m/e0;

    .line 3
    sget-object v1, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    .line 4
    invoke-virtual {v0, p2, v1}, Ls1/a/a/a/v0/m/d1;->i(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object p2

    const-string v0, "substitutor.safeSubstitu\u2026ANT\n                    )"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1, p2}, Ls1/a/a/a/v0/m/l1/c;->a(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    return-object p1
.end method
