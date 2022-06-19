.class public final synthetic Le/a/a/c/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/c0;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/a/a/c/c0;->a:Le/a/a/c/y3;

    .line 1
    iget-object v0, v0, Le/a/a/c/y3;->a:Le/a/a/c/c5;

    invoke-virtual {v0}, Le/a/a/c/c5;->Eq()V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
