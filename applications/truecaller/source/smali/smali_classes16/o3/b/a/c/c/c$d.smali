.class public final Lo3/b/a/c/c/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo3/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/b/a/c/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo3/b/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo3/b/a/c/c/c$d;->a:Ljava/util/Set;

    return-void
.end method
