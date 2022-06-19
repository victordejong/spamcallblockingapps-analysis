.class public Ln3/n/n;
.super Ln3/n/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/n/c<",
        "Ln3/n/i$a;",
        "Ln3/n/i;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ln3/n/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/n/c$a<",
            "Ln3/n/i$a;",
            "Ln3/n/i;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/n/n$a;

    invoke-direct {v0}, Ln3/n/n$a;-><init>()V

    sput-object v0, Ln3/n/n;->f:Ln3/n/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln3/n/n;->f:Ln3/n/c$a;

    invoke-direct {p0, v0}, Ln3/n/c;-><init>(Ln3/n/c$a;)V

    return-void
.end method
