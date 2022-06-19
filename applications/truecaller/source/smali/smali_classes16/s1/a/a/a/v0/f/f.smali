.class public final Ls1/a/a/a/v0/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/f0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/f0/h;

    const-string v1, "[^\\p{L}\\p{Digit}]"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/f/f;->a:Ls1/f0/h;

    return-void
.end method
