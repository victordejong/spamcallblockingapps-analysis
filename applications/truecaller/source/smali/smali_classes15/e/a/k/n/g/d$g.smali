.class public Le/a/k/n/g/d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/n/g/d;->b(Le/a/k/n/g/a;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/n/g/a;

.field public final synthetic b:Le/a/k/n/g/d;


# direct methods
.method public constructor <init>(Le/a/k/n/g/d;Le/a/k/n/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/k/n/g/d$g;->b:Le/a/k/n/g/d;

    iput-object p2, p0, Le/a/k/n/g/d$g;->a:Le/a/k/n/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/w/d;

    .line 2
    iget-object v0, p0, Le/a/k/n/g/d$g;->b:Le/a/k/n/g/d;

    iget-object v1, p0, Le/a/k/n/g/d$g;->a:Le/a/k/n/g/a;

    invoke-static {v0, v1, p1}, Le/a/p5/s0/g;->g(Le/a/k/n/g/c;Le/a/k/n/g/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
