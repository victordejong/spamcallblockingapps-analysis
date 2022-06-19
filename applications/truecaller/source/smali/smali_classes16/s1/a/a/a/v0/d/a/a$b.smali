.class public final Ls1/a/a/a/v0/d/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/b/f1/c;

.field public final b:I


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/f1/c;I)V
    .locals 1

    const-string v0, "typeQualifier"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/a$b;->a:Ls1/a/a/a/v0/b/f1/c;

    iput p2, p0, Ls1/a/a/a/v0/d/a/a$b;->b:I

    return-void
.end method
