.class public final Ls1/a/a/a/v0/n/m$b;
.super Ls1/a/a/a/v0/n/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/n/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final d:Ls1/a/a/a/v0/n/m$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/n/m$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/n/m$b;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/n/m$b;->d:Ls1/a/a/a/v0/n/m$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/n/m$b$a;->b:Ls1/a/a/a/v0/n/m$b$a;

    const-string v1, "Int"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Ls1/a/a/a/v0/n/m;-><init>(Ljava/lang/String;Ls1/z/b/l;Ls1/z/c/f;)V

    return-void
.end method
