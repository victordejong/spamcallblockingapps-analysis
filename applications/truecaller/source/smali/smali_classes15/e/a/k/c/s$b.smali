.class public final Le/a/k/c/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/r1/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/s;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/w2/x;


# direct methods
.method public constructor <init>(Lq3/a/w2/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/x<",
            "-",
            "Le/a/k/c/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/k/c/s$b;->a:Lq3/a/w2/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(IIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le/m/a/c/r1/q;->b(Le/m/a/c/r1/r;IIIF)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/c/s$b;->a:Lq3/a/w2/x;

    sget-object v1, Le/a/k/c/u$a;->a:Le/a/k/c/u$a;

    invoke-static {v0, v1}, Le/a/p5/s0/g;->l1(Lq3/a/w2/d0;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic i(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Le/m/a/c/r1/q;->a(Le/m/a/c/r1/r;II)V

    return-void
.end method
