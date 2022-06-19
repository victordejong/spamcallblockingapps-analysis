.class public Le/a/m0/c1/l0$a;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/c1/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(Le/a/m0/c1/l0;Ljava/lang/RuntimeException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p2, p0, Le/a/m0/c1/l0$a;->a:Ljava/lang/RuntimeException;

    return-void
.end method
