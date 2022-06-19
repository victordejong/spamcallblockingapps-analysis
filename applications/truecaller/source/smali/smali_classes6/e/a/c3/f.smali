.class public final Le/a/c3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "unspecified"


# direct methods
.method public static final a()Z
    .locals 2

    .line 1
    sget-object v0, Le/a/c3/f;->a:Ljava/lang/String;

    const-string v1, "unspecified"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
