.class public abstract Lg/e/a/a/l/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/e/a/a/l/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field public static b:I = -0x1


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lg/e/a/a/l/f$a;->b:I

    iput v0, p0, Lg/e/a/a/l/f$a;->a:I

    return-void
.end method


# virtual methods
.method protected abstract a()Lg/e/a/a/l/f$a;
.end method
