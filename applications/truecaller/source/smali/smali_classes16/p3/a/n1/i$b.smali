.class public final Lp3/a/n1/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final synthetic b:Lp3/a/n1/i;


# direct methods
.method public constructor <init>(Lp3/a/n1/i;JLp3/a/n1/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/i$b;->b:Lp3/a/n1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lp3/a/n1/i$b;->a:J

    return-void
.end method
