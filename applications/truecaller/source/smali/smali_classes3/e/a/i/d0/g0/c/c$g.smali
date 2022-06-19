.class public Le/a/i/d0/g0/c/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/g0/c/c;->o(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
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
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Le/a/i/d0/g0/c/c;


# direct methods
.method public constructor <init>(Le/a/i/d0/g0/c/c;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/d0/g0/c/c$g;->b:Le/a/i/d0/g0/c/c;

    iput-object p2, p0, Le/a/i/d0/g0/c/c$g;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/w/d;

    .line 2
    iget-object v0, p0, Le/a/i/d0/g0/c/c$g;->b:Le/a/i/d0/g0/c/c;

    iget-object v1, p0, Le/a/i/d0/g0/c/c$g;->a:Ljava/util/List;

    invoke-static {v0, v1, p1}, Le/m/d/y/n;->h(Le/a/i/d0/g0/c/b;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
