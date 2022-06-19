.class public final Ln3/n/n$a;
.super Ln3/n/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/n/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/n/c$a<",
        "Ln3/n/i$a;",
        "Ln3/n/i;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/n/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ln3/n/i$a;

    check-cast p2, Ln3/n/i;

    check-cast p4, Ljava/lang/Void;

    .line 2
    invoke-virtual {p1, p2, p3}, Ln3/n/i$a;->e(Ln3/n/i;I)V

    return-void
.end method
