.class public final synthetic Le/m/d/b0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Le/m/d/b0/q;


# direct methods
.method public synthetic constructor <init>(Le/m/d/b0/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/b0/g;->a:Le/m/d/b0/q;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/m/d/b0/g;->a:Le/m/d/b0/q;

    const-string v1, "firebase"

    .line 1
    invoke-virtual {v0, v1}, Le/m/d/b0/q;->b(Ljava/lang/String;)Le/m/d/b0/k;

    move-result-object v0

    return-object v0
.end method
