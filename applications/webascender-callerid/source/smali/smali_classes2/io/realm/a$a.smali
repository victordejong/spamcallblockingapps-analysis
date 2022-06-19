.class Lio/realm/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/a;


# direct methods
.method constructor <init>(Lio/realm/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/a$a;->a:Lio/realm/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSchemaChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/a$a;->a:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->C()Lio/realm/j0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/realm/j0;->m()V

    :cond_0
    return-void
.end method
