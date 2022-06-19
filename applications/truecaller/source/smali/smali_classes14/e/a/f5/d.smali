.class public final Le/a/f5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/f0/h;

.field public static final b:Ls1/f0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/f0/h;

    const-string v1, "07\\d{8}|7\\d{8}"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/f5/d;->a:Ls1/f0/h;

    .line 2
    new-instance v0, Ls1/f0/h;

    const-string v1, "123\\d{7}|90\\d{5}"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/f5/d;->b:Ls1/f0/h;

    return-void
.end method
