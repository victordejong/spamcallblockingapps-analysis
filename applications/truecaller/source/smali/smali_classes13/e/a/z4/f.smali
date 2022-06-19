.class public final Le/a/z4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/z4/d;


# direct methods
.method public constructor <init>(Le/a/z4/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "generalSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/z4/f;->a:Le/a/z4/d;

    return-void
.end method
