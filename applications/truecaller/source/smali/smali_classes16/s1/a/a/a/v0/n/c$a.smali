.class public final Ls1/a/a/a/v0/n/c$a;
.super Ls1/a/a/a/v0/n/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/n/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/n/c$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/n/c$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/n/c$a;->b:Ls1/a/a/a/v0/n/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Ls1/a/a/a/v0/n/c;-><init>(ZLs1/z/c/f;)V

    return-void
.end method
