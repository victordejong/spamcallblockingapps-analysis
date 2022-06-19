.class public Le/k/a/b/w/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/b/w/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final b:Le/k/a/b/w/a$a;


# instance fields
.field public a:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/b/w/a$a;

    invoke-direct {v0}, Le/k/a/b/w/a$a;-><init>()V

    sput-object v0, Le/k/a/b/w/a$a;->b:Le/k/a/b/w/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [[I

    .line 2
    iput-object v0, p0, Le/k/a/b/w/a$a;->a:[[I

    return-void
.end method
