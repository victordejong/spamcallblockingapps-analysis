.class public abstract Lf/k/a/b$k;
.super Lf/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/k/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/k/a/c<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lf/k/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lf/k/a/b$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/k/a/b$k;-><init>(Ljava/lang/String;)V

    return-void
.end method
