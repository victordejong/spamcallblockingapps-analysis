.class public final Le/a/a/h1/n/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/h1/n/b;


# instance fields
.field public final a:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Le/a/p5/h0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/h1/n/c;->a:Le/a/p5/h0;

    return-void
.end method
