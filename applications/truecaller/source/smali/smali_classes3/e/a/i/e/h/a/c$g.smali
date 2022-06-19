.class public Le/a/i/e/h/a/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/h/a/c;->h(Le/a/i/e/h/b/a;Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/e/h/b/a;

.field public final synthetic b:Le/a/i/e/h/a/c;


# direct methods
.method public constructor <init>(Le/a/i/e/h/a/c;Le/a/i/e/h/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/e/h/a/c$g;->b:Le/a/i/e/h/a/c;

    iput-object p2, p0, Le/a/i/e/h/a/c$g;->a:Le/a/i/e/h/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/w/d;

    .line 2
    iget-object v0, p0, Le/a/i/e/h/a/c$g;->b:Le/a/i/e/h/a/c;

    iget-object v1, p0, Le/a/i/e/h/a/c$g;->a:Le/a/i/e/h/b/a;

    invoke-static {v0, v1, p1}, Le/m/d/y/n;->i(Le/a/i/e/h/a/b;Le/a/i/e/h/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
