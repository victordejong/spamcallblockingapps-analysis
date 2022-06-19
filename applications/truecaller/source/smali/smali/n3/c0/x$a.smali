.class public abstract Ln3/c0/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/c0/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final version:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/c0/x$a;->version:I

    return-void
.end method


# virtual methods
.method public abstract createAllTables(Ln3/e0/a/b;)V
.end method

.method public abstract dropAllTables(Ln3/e0/a/b;)V
.end method

.method public abstract onCreate(Ln3/e0/a/b;)V
.end method

.method public abstract onOpen(Ln3/e0/a/b;)V
.end method

.method public abstract onPostMigrate(Ln3/e0/a/b;)V
.end method

.method public abstract onPreMigrate(Ln3/e0/a/b;)V
.end method

.method public abstract onValidateSchema(Ln3/e0/a/b;)Ln3/c0/x$b;
.end method

.method public validateMigration(Ln3/e0/a/b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "validateMigration is deprecated"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
