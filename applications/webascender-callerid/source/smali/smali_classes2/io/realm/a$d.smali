.class Lio/realm/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/OsSharedRealm$MigrationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/a;->l(Lio/realm/d0;)Lio/realm/internal/OsSharedRealm$MigrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/d0;


# direct methods
.method constructor <init>(Lio/realm/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/a$d;->a:Lio/realm/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMigrationNeeded(Lio/realm/internal/OsSharedRealm;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/a$d;->a:Lio/realm/d0;

    invoke-static {p1}, Lio/realm/h;->Y(Lio/realm/internal/OsSharedRealm;)Lio/realm/h;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lio/realm/d0;->a(Lio/realm/h;JJ)V

    return-void
.end method
