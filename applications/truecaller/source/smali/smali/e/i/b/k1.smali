.class public final synthetic Le/i/b/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# instance fields
.field public final synthetic a:Le/i/b/x2$a;


# direct methods
.method public synthetic constructor <init>(Le/i/b/x2$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/k1;->a:Le/i/b/x2$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/i/b/k1;->a:Le/i/b/x2$a;

    invoke-interface {v0}, Le/i/b/x2$a;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
