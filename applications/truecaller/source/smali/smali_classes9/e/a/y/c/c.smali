.class public final Le/a/y/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/g;

.field public static final b:Le/a/y/c/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/a/y/c/c$a;->b:Le/a/y/c/c$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/y/c/c;->a:Ls1/g;

    return-void
.end method

.method public static final a()Le/a/y/c/x/a/a;
    .locals 2

    .line 1
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.flashsdk.core.FlashManagerImpl"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/y/c/d;

    .line 2
    iget-object v0, v0, Le/a/y/c/d;->g:Le/a/y/c/x/a/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "component"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final b()Le/a/y/c/b;
    .locals 1

    sget-object v0, Le/a/y/c/c;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/c/b;

    return-object v0
.end method
