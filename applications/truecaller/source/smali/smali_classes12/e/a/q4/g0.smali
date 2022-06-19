.class public final Le/a/q4/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q4/h0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q4/g0$d;,
        Le/a/q4/g0$c;,
        Le/a/q4/g0$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;


# direct methods
.method public constructor <init>(Le/a/r2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q4/g0;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q4/g0;->a:Le/a/r2/w;

    new-instance v1, Le/a/q4/g0$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/q4/g0$c;-><init>(Le/a/r2/e;Le/a/q4/g0$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q4/g0;->a:Le/a/r2/w;

    new-instance v1, Le/a/q4/g0$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/q4/g0$d;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/Contact;Le/a/q4/g0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public c()Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q4/g0;->a:Le/a/r2/w;

    new-instance v1, Le/a/q4/g0$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/q4/g0$b;-><init>(Le/a/r2/e;Le/a/q4/g0$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method
