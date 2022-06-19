.class public Le/a/i/d0/c0/n$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/c0/n;->s(Le/a/i/d0/c0/p;Ls1/w/d;)Ljava/lang/Object;
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
.field public final synthetic a:Le/a/i/d0/c0/p;

.field public final synthetic b:Le/a/i/d0/c0/n;


# direct methods
.method public constructor <init>(Le/a/i/d0/c0/n;Le/a/i/d0/c0/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/d0/c0/n$h;->b:Le/a/i/d0/c0/n;

    iput-object p2, p0, Le/a/i/d0/c0/n$h;->a:Le/a/i/d0/c0/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/w/d;

    .line 2
    iget-object v0, p0, Le/a/i/d0/c0/n$h;->b:Le/a/i/d0/c0/n;

    iget-object v1, p0, Le/a/i/d0/c0/n$h;->a:Le/a/i/d0/c0/p;

    invoke-static {v0, v1, p1}, Le/m/d/y/n;->g(Le/a/i/d0/c0/m;Le/a/i/d0/c0/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
