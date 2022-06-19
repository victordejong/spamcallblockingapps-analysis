.class public abstract Lcom/hiya/stingray/t/b1;
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

.method public static a(Ljava/lang/String;I)Lcom/hiya/stingray/t/b1;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/z;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/t/z;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c()Ljava/lang/String;
.end method
