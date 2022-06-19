.class public Ls1/x/d/a;
.super Ls1/x/c/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/x/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ls1/c0/c;
    .locals 1

    .line 1
    new-instance v0, Ls1/c0/e/a;

    invoke-direct {v0}, Ls1/c0/e/a;-><init>()V

    return-object v0
.end method
