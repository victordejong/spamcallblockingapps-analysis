.class public final synthetic Le/a/a/c/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/n0;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/a/a/c/n0;->a:Le/a/a/c/y3;

    check-cast p1, Lcom/truecaller/messaging/views/Switch;

    .line 1
    iget-object v0, v0, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {v0, p1}, Le/a/a/c/f4;->Pa(Lcom/truecaller/messaging/views/Switch;)Ls1/s;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
