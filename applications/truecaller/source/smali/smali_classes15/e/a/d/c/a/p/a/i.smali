.class public final Le/a/d/c/a/p/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/Set<",
        "+",
        "Le/a/d/v/l/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/a/p/a/h;


# direct methods
.method public constructor <init>(Le/a/d/c/a/p/a/h;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/p/a/i;->a:Le/a/d/c/a/p/a/h;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Set;

    .line 2
    iget-object p2, p0, Le/a/d/c/a/p/a/i;->a:Le/a/d/c/a/p/a/h;

    .line 3
    iput-object p1, p2, Le/a/d/c/a/p/a/h;->e:Ljava/util/Set;

    .line 4
    invoke-virtual {p2}, Le/a/d/c/a/p/a/h;->Mj()V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
