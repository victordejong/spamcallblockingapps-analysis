.class public abstract Lcom/hiya/stingray/t/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;IJI)Lcom/hiya/stingray/t/e0;
    .locals 8

    .line 1
    new-instance v7, Lcom/hiya/stingray/t/r;

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/hiya/stingray/t/r;-><init>(ILjava/lang/String;IJI)V

    return-object v7
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()I
.end method
