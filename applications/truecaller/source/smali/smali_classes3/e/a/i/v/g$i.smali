.class public Le/a/i/v/g$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/v/g;->t(Le/a/i/v/i;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
.field public final synthetic a:Le/a/i/v/i;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le/a/i/v/g;


# direct methods
.method public constructor <init>(Le/a/i/v/g;Le/a/i/v/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/v/g$i;->c:Le/a/i/v/g;

    iput-object p2, p0, Le/a/i/v/g$i;->a:Le/a/i/v/i;

    iput-object p3, p0, Le/a/i/v/g$i;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/w/d;

    .line 2
    iget-object v0, p0, Le/a/i/v/g$i;->c:Le/a/i/v/g;

    iget-object v1, p0, Le/a/i/v/g$i;->a:Le/a/i/v/i;

    iget-object v2, p0, Le/a/i/v/g$i;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Le/m/d/y/n;->f(Le/a/i/v/f;Le/a/i/v/i;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
