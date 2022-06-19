.class public Le/k/a/c/c0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final c:I


# instance fields
.field public a:Ljava/lang/Boolean;

.field public final b:[Le/k/a/c/c0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/k/a/c/c0/d;->values()[Le/k/a/c/c0/d;

    const/16 v0, 0xa

    sput v0, Le/k/a/c/c0/m;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Le/k/a/c/c0/m;->c:I

    new-array v0, v0, [Le/k/a/c/c0/b;

    iput-object v0, p0, Le/k/a/c/c0/m;->b:[Le/k/a/c/c0/b;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Le/k/a/c/c0/m;->a:Ljava/lang/Boolean;

    return-void
.end method
