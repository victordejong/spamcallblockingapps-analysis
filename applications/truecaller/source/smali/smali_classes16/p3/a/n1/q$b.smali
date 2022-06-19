.class public Lp3/a/n1/q$b;
.super Lp3/a/n1/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/q;->j(Lp3/a/f$a;Lp3/a/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lp3/a/f$a;

.field public final synthetic c:Lp3/a/n1/q;


# direct methods
.method public constructor <init>(Lp3/a/n1/q;Lp3/a/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/q$b;->c:Lp3/a/n1/q;

    iput-object p2, p0, Lp3/a/n1/q$b;->b:Lp3/a/f$a;

    .line 2
    iget-object p1, p1, Lp3/a/n1/q;->f:Lp3/a/q;

    .line 3
    invoke-direct {p0, p1}, Lp3/a/n1/z;-><init>(Lp3/a/q;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/q$b;->c:Lp3/a/n1/q;

    iget-object v1, p0, Lp3/a/n1/q$b;->b:Lp3/a/f$a;

    .line 2
    iget-object v2, v0, Lp3/a/n1/q;->f:Lp3/a/q;

    .line 3
    invoke-static {v2}, Le/q/f/a/d/a;->Y2(Lp3/a/q;)Lp3/a/g1;

    move-result-object v2

    new-instance v3, Lp3/a/o0;

    invoke-direct {v3}, Lp3/a/o0;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, v2, v3}, Lp3/a/f$a;->a(Lp3/a/g1;Lp3/a/o0;)V

    return-void
.end method
