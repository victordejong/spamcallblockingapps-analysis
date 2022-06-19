.class public final Lcom/truecaller/suspension/UnsuspensionMethod$b;
.super Lcom/truecaller/suspension/UnsuspensionMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/suspension/UnsuspensionMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/suspension/UnsuspensionMethod;-><init>(Ls1/z/c/f;)V

    iput-wide p1, p0, Lcom/truecaller/suspension/UnsuspensionMethod$b;->a:J

    iput-boolean p3, p0, Lcom/truecaller/suspension/UnsuspensionMethod$b;->b:Z

    return-void
.end method
